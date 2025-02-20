"use client";
import { Icon } from "@iconify/react/dist/iconify.js";
import Image from "next/image";

interface ServiceItem {
  title: string;
  description: string;
  imageUrl: string;
}

const servicesData: ServiceItem[] = [
  {
    title: "32 T 0008",
    description: "Temel masaj tekniği, kas gerginliğini azaltır.",
    imageUrl: "/images/services/ispartabytaksi-0008.jpg",
  },
  {
    title: "32 T 0165",
    description: "Ağrı ve tedavi odaklı, hedefli masaj yöntemleri.",
    imageUrl: "/images/services/ispartabytaksi-0165.jpg",
  },
  {
    title: "32 T 0008",
    description: "Toksin atımını hızlandırır, ödemi azaltır.",
    imageUrl: "/images/services/ispartabytaksi-0008 (2).jpg",
  },
];

export default function CarServices() {
  return (
    <section className="flex flex-col justify-center py-20 h-max">
      <div className="container mx-auto">
        <header className="flex flex-col md:flex-row items-center justify-center mb-6 gap-4 md:gap-2">
          <h2 className="text-3xl font-bold text-center">Araçlarımız</h2>
        </header>
        <article className="flex flex-wrap space-y-4 mx-auto justify-center items-end mt-2 grid-cols-2 gap-4 md:gap-8 md:grid-cols-3 lg:grid-cols-4 lg:space-y-4">
          {servicesData.length === 0 ? (
            <Icon
              icon="line-md:loading-twotone-loop"
              className="w-40 h-40 text-blue-500"
            />
          ) : (
            servicesData.map((service, index) => (
              <div
                key={index}
                className="w-80 md:w-[300px] h-[470px] md:h-[430px] flex-shrink-0 bg-white rounded-lg shadow-2xl shadow-[#282c34] p-4"
              >
                <div className="relative w-full h-[340px] md:h-60 mb-3">
                  <Image
                    src={service.imageUrl}
                    alt={`${service.title} - Isparta By Taksi`}
                    fill
                    className="object-cover rounded-md"
                  />
                </div>
                <h3 className="text-center text-2xl font-bold text-gray-800">
                  {service.title}
                </h3>
                <p className="text-sm text-gray-700 text-wrap">
                  {service.description}
                </p>
              </div>
            ))
          )}
        </article>
      </div>
    </section>
  );
}
