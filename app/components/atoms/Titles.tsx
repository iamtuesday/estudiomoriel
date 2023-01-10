import { FC } from "react";

interface TitlesProps {
  subtitle?: string;
  title: string;
  className?: string;
}

export const Titles: FC<TitlesProps> = ({ subtitle, title, className }) => {
  return (
    <div className={`Titles-${className}`}>
      {/* <div className="Titles-p"
        dangerouslySetInnerHTML={{ __html: subtitle }}
      /> */}
      <h2 className="Titles-h2">{title}</h2>
      <p className="Titles-p">{subtitle}</p>
    </div>
  );
};
