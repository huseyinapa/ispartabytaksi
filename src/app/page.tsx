import About from "./_features/About";
import FAQFeatures from "./_features/FAQ";
import HomeFeature from "./_features/Home";
import CarServices from "./_features/Services";

export default function Home() {
  return (
    <>
      <script
        type="application/ld+json"
        dangerouslySetInnerHTML={{
          __html: JSON.stringify({
            "@context": "https://schema.org",
            "@type": "TaxiService",
            name: "Isparta By Taksi",
            image: "https://ispartabytaksi.com/images/logo.jpg",
            "@id": "https://ispartabytaksi.com",
            url: "https://ispartabytaksi.com",
            telephone: "+905431019001",
            address: {
              "@type": "PostalAddress",
              streetAddress: "Firdevs Cd. No: 8 D:14", //! doğrulanacak
              addressLocality: "Isparta",
              postalCode: "32100",
              addressCountry: "TR",
            },
            priceRange: "₺₺",
            openingHoursSpecification: {
              "@type": "OpeningHoursSpecification",
              dayOfWeek: [
                "Monday",
                "Tuesday",
                "Wednesday",
                "Thursday",
                "Friday",
                "Saturday",
                "Sunday",
              ],
              opens: "00:00",
              closes: "23:59",
            },
          }),
        }}
      />
      <div className="mx-auto">
        <HomeFeature />
        <CarServices />
        <About />
        <FAQFeatures />
      </div>
    </>
  );
}
