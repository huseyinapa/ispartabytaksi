import type { Metadata } from "next";
import AboutFeature from "./_features/About";

export const metadata: Metadata = {
  title: "Hakkımızda | Isparta'nın Güvenilir Taksi Hizmeti",
  description:
    "2010'dan beri Isparta'da profesyonel taksi hizmeti sunuyoruz. Modern araç filomuz ve deneyimli sürücülerimizle 7/24 yanınızdayız.",
  openGraph: {
    title: "Hakkımızda | Isparta'nın Güvenilir Taksi Hizmeti",
    description:
      "2010'dan beri Isparta'da profesyonel taksi hizmeti sunuyoruz. Modern araç filomuz ve deneyimli sürücülerimizle 7/24 yanınızdayız.",
  },
};

export default function AboutPage() {
  return <AboutFeature />;
}
