import type { Metadata } from "next";
import { Geist, Geist_Mono } from "next/font/google";
import "./globals.css";
import NavbarComponent from "@/app/_components/Navbar";
import FooterComponent from "./_components/Footer";
import { ToastContainer } from "react-toastify";
import Script from "next/script";
import SpeedDialButtonComponent from "./_components/SpeedDialButton";

const geistSans = Geist({
  variable: "--font-geist-sans",
  subsets: ["latin"],
});

const geistMono = Geist_Mono({
  variable: "--font-geist-mono",
  subsets: ["latin"],
});

// Burada metadata objenizi olduğu gibi koruyabilirsiniz
export const metadata: Metadata = {
  title: {
    default: "Isparta By Taksi | Güvenli ve Konforlu Ulaşım",
    template: "%s | Isparta By Taksi",
  },
  description:
    "Isparta'nın güvenilir taksi hizmeti. 7/24 hizmet, profesyonel sürücüler, modern araçlar. ✓ Hızlı Teslimat ✓ Güvenli Yolculuk ✓ Uygun Fiyatlar",
  keywords: [
    "isparta taksi",
    "Isparta taksi",
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
    address: true,
    telephone: true,
  },
  openGraph: {
    title: "Isparta By Taksi | Güvenli ve Konforlu Ulaşım",
    description:
      "Isparta'nın güvenilir taksi hizmeti. 7/24 hizmet, profesyonel sürücüler ve modern araçlarla hizmetinizdeyiz.",
    url: "https://ispartabytaksi.com",
    siteName: "Isparta By Taksi",
    images: [
      {
        url: "https://ispartabytaksi.com/og-image.jpg",
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
      <head>
        {/* Google Tag Manager: Script Kodu */}
        <Script
          id="gtm-base"
          strategy="beforeInteractive" // veya "afterInteractive"
          dangerouslySetInnerHTML={{
            __html: `
              (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
              new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
              j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
              'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
              })(window,document,'script','dataLayer','AW-11516061259');
            `,
          }}
        />
      </head>
      <body
        className={`${geistSans.variable} ${geistMono.variable} antialiased ${
          NODE_ENV !== "production" ? "debug-screens" : ""
        }`}
      >
        {/* Google Tag Manager: NoScript Fallback */}
        <noscript
          dangerouslySetInnerHTML={{
            __html: `
              <iframe src="https://www.googletagmanager.com/ns.html?id=AW-11516061259"
              height="0" width="0" style="display:none;visibility:hidden"></iframe>
            `,
          }}
        />

        {/* Google Analytics 4 (GTAG.js) */}
        <Script
          strategy="afterInteractive"
          src="https://www.googletagmanager.com/gtag/js?id=G-RLKC1XDH1K"
        />
        <Script
          id="google-analytics"
          strategy="afterInteractive"
          dangerouslySetInnerHTML={{
            __html: `
              window.dataLayer = window.dataLayer || [];
              function gtag(){dataLayer.push(arguments);}
              gtag('js', new Date());
              gtag('config', 'G-RLKC1XDH1K');
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
