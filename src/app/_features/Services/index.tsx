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
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mt-8 mx-auto max-w-7xl px-4">
          {servicesData.length === 0 ? (
            <div className="col-span-full flex justify-center">
              <Icon
                icon="line-md:loading-twotone-loop"
                className="w-40 h-40 text-blue-500"
              />
            </div>
          ) : (
            servicesData.map((service, index) => (
              <div
                key={index}
                className="bg-white rounded-xl shadow-lg transition-transform duration-300 hover:scale-105"
              >
                <div className="relative aspect-[4/3] w-full">
                  <Image
                    src={service.imageUrl}
                    alt={`${service.title} - Isparta By Taksi`}
                    fill
                    className="object-cover rounded-t-xl"
                    sizes="(max-width: 640px) 100vw, (max-width: 1024px) 50vw, 33vw"
                  />
                </div>
                <div className="p-6">
                  <h3 className="text-2xl font-bold text-gray-800 mb-3">
                    {service.title}
                  </h3>
                  <p className="text-gray-600">{service.description}</p>
                </div>
              </div>
            ))
          )}
        </div>
      </div>
    </section>
  );
}
