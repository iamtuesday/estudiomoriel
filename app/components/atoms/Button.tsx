import { useRouter } from "next/router";
import React, { FC, ReactNode } from "react";
import Link from "next/link";

// interface to declare all our prop types
interface Props {
  children: ReactNode;
  to?: string;
  onClick?: () => void;
  variant?: string; // default, primary, info, success, warning, danger, dark
  disabled?: boolean;
  iconType?: string;
}
// button component, consuming props
export const Button: FC<Props> = ({
  children,
  to,
  variant = "default",
  disabled,
  onClick,
  iconType = "",
  ...rest
}) => {
  const router = useRouter();
  return (
    <>
      {to ? (
        <button
          className={`btn-${variant}` + (disabled ? " disabled" : "")}
          onClick={() => router.push(`${to}`)}
          {...rest}
        >
          {children}
          {iconType && <span className={`icon-${iconType}`}></span>}
        </button>
      ) : (
        <button
          className={`btn-${variant}` + (disabled ? " disabled" : "")}
          disabled={disabled}
          onClick={onClick}
          {...rest}
        >
          {children}
          {iconType && <span className={`icon-${iconType}`}></span>}
        </button>
      )}
    </>
  );
};
