import { FC } from 'react'
import Script from 'next/script'
import { useGenerals } from '../../context/generals.context'
import { useButton } from '../../hooks/useButton'

export const CustomHead: FC = () => {
  const { polylang } = useGenerals()

  // Agrega GetButton
  // useButton()

  return (
    <>
      {polylang.tag_manager && (
        <>
          <Script
            strategy="afterInteractive"
            src={`https://www.googletagmanager.com/gtag/js?id=${polylang.tag_manager}`}
          />
          <Script
            id="google-analytics"
            strategy="afterInteractive"
            dangerouslySetInnerHTML={{
              __html: `
                window.dataLayer = window.dataLayer || [];
                function gtag(){dataLayer.push(arguments);}
                gtag('js', new Date());
                gtag('config', '${polylang.tag_manager}', {
                  page_path: window.location.pathname
                })`
            }}
          />
        </>
      )}

      {polylang.pixel_facebook && (
        <>
          <Script strategy="afterInteractive" src="https://connect.facebook.net/en_US/fbevents.js" />

          <Script
            id="pixel-facebook"
            strategy="afterInteractive"
            dangerouslySetInnerHTML={{
              __html: `
              !function(f) {
                if (f.fbq) return;
                var n = f.fbq = function() {
                  n.callMethod ? n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq) f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
              }(window);
              fbq('init', '${polylang.pixel_facebook}');
              fbq('track', 'PageView');`
            }}
          />
        </>
      )}
    </>
  )
}
