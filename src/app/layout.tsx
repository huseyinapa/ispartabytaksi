import type { Metadata } from "next";
import "./globals.css";
import NavbarComponent from "@/app/_components/Navbar";
import FooterComponent from "./_components/Footer";
import { ToastContainer } from "react-toastify";
import Script from "next/script";
import SpeedDialButtonComponent from "./_components/SpeedDialButton";

// Burada metadata objenizi olduğu gibi koruyabilirsiniz
export const metadata: Metadata = {
  metadataBase: new URL("https://ispartabytaksi.com"),
  title: {
    default: "Isparta By Taksi | Isparta Taksi Hizmetinin Güvenilir Adresi",
    template: "%s | Isparta By Taksi",
  },
  description:
    "Isparta'nın güvenilir taksi hizmeti. 7/24 hizmet, profesyonel sürücüler, modern araçlar. ✓ Hızlı Teslimat ✓ Güvenli Yolculuk ✓ Uygun Fiyatlar",
  category: "Taxi Service",
  keywords: [
    "isparta taksi",
    "Isparta taksi",
    "isparta taksi duraklari",
    "Isparta taksi duraklari",
    "taksi durağı",
    "7/24 taksi",
    "güvenli taksi",
    "havaalanı transfer",
    "şehir içi taksi",
    "Isparta transfer",
    "isparta transfer",
    "taksi çağır",
  ],
  authors: [{ name: "Isparta By Taksi" }],
  creator: "Isparta By Taksi",
  publisher: "Isparta By Taksi",
  formatDetection: {
    email: false,
    address: false,
    telephone: true,
  },
  openGraph: {
    title: "Isparta By Taksi | Isparta Taksi Hizmeti",
    description:
      "Isparta'nın güvenilir taksi hizmeti. 7/24 hizmet, profesyonel sürücüler ve modern araçlarla hizmetinizdeyiz.",
    url: "https://ispartabytaksi.com",
    siteName: "Isparta By Taksi",
    countryName: "Turkey",
    images: [
      {
        url: "/images/ispartabytaksi-aninda-yaninda.jpg",
        width: 1200,
        height: 630,
        alt: "Isparta By Taksi",
      },
    ],
    locale: "tr_TR",
    type: "website",
  },
  robots: {
    index: true,
    follow: true,
    googleBot: {
      index: true,
      follow: true,
      "max-video-preview": -1,
      "max-image-preview": "large",
      "max-snippet": -1,
    },
  },
};

const NODE_ENV = process.env.NODE_ENV;

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="tr">
      <body
        className={`antialiased ${NODE_ENV !== "production" ? "debug-screens" : ""
          }`}
      >

        <Script
          strategy="afterInteractive"
          src="https://www.googletagmanager.com/gtag/js?id=G-HL6VH01WXP"
        />
        <Script
          id="google-analytics"
          strategy="afterInteractive"
          dangerouslySetInnerHTML={{
            __html: `
              window.dataLayer = window.dataLayer || [];
              function gtag(){dataLayer.push(arguments);}
              gtag('js', new Date());
              gtag('config', 'G-HL6VH01WXP');
            `,
          }}
        />
        <NavbarComponent />
        {children}
        <div className="fixed bottom-6 right-2">
          <SpeedDialButtonComponent />
        </div>
        <ToastContainer />
        <FooterComponent />
      </body>
    </html>
  );
}
