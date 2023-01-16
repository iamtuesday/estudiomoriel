import { useEffect } from 'react'
import { useGenerals } from '../context/generals.context'

export const useButton = () => {
   const { polylang: meta, polylang } = useGenerals()
   useEffect(() => {
      const polylang = {
         sms: meta.whatsapp || '', // Sms phone number
         facebook: meta.facebook_id || '', // Facebook page ID
         //COMENTE ESTO
         // call_to_action: polylang.message_cta || '', // Call to action
         button_color: '#9471F4', // Color of button
         position: 'right', // Position may be 'right' or 'left'
         order: 'sms,facebook', // Order of buttons
      }
      const proto = document.location.protocol || 'https:',
         host = 'getbutton.io',
         url = proto + '//static.' + host
      const s = document.createElement('script')
      s.type = 'text/javascript'
      s.async = true
      s.src = url + '/widget-send-button/js/init.js'
      s.onload = function () {
         // @ts-ignore
         WhWidgetSendButton.init(host, proto, polylang)
      }
      const x = document.getElementsByTagName('script')[0]
      x.parentNode!.insertBefore(s, x)
   }, [meta, polylang])

   useEffect(() => {
      let buttonEl: any = null
      const interval = setInterval(() => {
         if (buttonEl) {
            clearInterval(interval)
            buttonEl.style.zIndex = 10
            return
         }
         buttonEl = document.querySelector('[id^="gb-widget-"]')
      }, 1000)
      return () => {
         clearInterval(interval)
      }
   }, [])
}
