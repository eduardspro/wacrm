import { type ImageResponse } from "next/og";

// Route segment config
export const contentType = "image/png";
export const size = { width: 32, height: 32 };

export default function Icon(): ImageResponse {
  return new ImageResponse(
    (
      <img
        src={`${process.env.NEXT_PUBLIC_SITE_URL || ""}/logIndu.png`}
        width={32}
        height={32}
        alt="INDUTRONICA"
      />
    ),
    { width: 32, height: 32 }
  );
}
