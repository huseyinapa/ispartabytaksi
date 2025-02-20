import type { Metadata } from "next";
import WhyUsFeature from "./_features/WhyUs";

export const metadata: Metadata = {
  title: "Neden Biz? | Isparta'nın En İyi Taksi Hizmeti",
  description:
    "Profesyonel sürücülerimiz, modern araç filomuz ve güvenilir hizmet anlayışımızla Isparta'nın önde gelen taksi firmasıyız. 7/24 hizmet ve uygun fiyatlarla yanınızdayız.",
  openGraph: {
    title: "Neden Biz? | Isparta'nın En İyi Taksi Hizmeti",
    description:
      "Profesyonel sürücülerimiz, modern araç filomuz ve güvenilir hizmet anlayışımızla Isparta'nın önde gelen taksi firmasıyız.",
  },
};

const page = () => {
  return <WhyUsFeature />;
};

export default page;
