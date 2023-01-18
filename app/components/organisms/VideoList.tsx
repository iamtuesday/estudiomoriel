import { FC, useMemo, useState } from "react";
import { Container } from "../globals";
import { Titles } from "../atoms";
import { Video } from "../../interfaces";
import Image from "next/future/image";
import FsLightbox from "fslightbox-react";

interface VideoListProps {
  videos: Video[];
}

export const VideoList: FC<VideoListProps> = ({ videos }) => {
  const [lightboxController, setLightboxController] = useState({
    toggler: false,
    slide: 1,
  });

  const openLightboxOnSlide = (number: number) => {
    setLightboxController((prevState) => {
      return {
        toggler: !prevState.toggler,
        slide: number,
      };
    });
  };

  const images = useMemo(() => {
    return videos.map((item) => item.url);
  }, [videos]);

  return (
    <section className="VideoList">
      <div className="VideoList-List">
        {videos.map(({ title, img, url }, indexGallery) => {
          return (
            <div className="VideoList-Item" key={indexGallery}>
              <iframe
                // onClick={() => openLightboxOnSlide(indexGallery + 1)}
                id={indexGallery.toString()}
                title={title}
                width={450}
                height={250}
                src={url}
                allow="autoplay; fullscreen"
              ></iframe>
              <p className="VideoList-Content">{title}</p>
            </div>
          );
        })}
      </div>
      <FsLightbox
        toggler={lightboxController.toggler}
        sources={images}
        slide={lightboxController.slide}
        type="video"
      />
    </section>
  );
};
