"use client";

import { motion } from "framer-motion";
import Image from "next/image";

export default function AboutFeature() {
  return (
    <>
      <figure className="relative h-[500px] overflow-hidden">
        <Image
          src="https://www.atasehirmasajspa.com.tr/wp-content/uploads/sites/8/2025/01/atasehirin-gozde-masaj-salonu-remiks-spa-ile-essiz-bir-deneyim-1200x500.jpg"
          alt="Haakkımızda"
          className="object-cover opacity-60 aspect-video w-full"
          fill
        />
        <figcaption className="absolute inset-0 flex items-center justify-center bg-gray-800 bg-opacity-50">
          <motion.h1
            className="text-6xl font-bold text-center text-white"
            initial={{ y: -100, opacity: 0 }}
            animate={{ y: 0, opacity: 1 }}
            transition={{ duration: 0.5 }}
          >
            Hakkımızda
          </motion.h1>
        </figcaption>
      </figure>
      <div className="container mx-auto py-[130px]">
        {/* Rest of the existing content */}
        {/* Hero Section */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-12 items-center mb-20">
          <div className="space-y-8">
            <div>
              <h1 className="text-5xl font-bold mb-4 text-gray-800">
                Isparta By <span className="text-yellow-500">Taksi</span>
              </h1>
              <p className="text-xl text-gray-600 leading-relaxed">
                2010 yılından bu yana Isparta&apos;da güvenilir, konforlu ve
                profesyonel taksi hizmeti sunuyoruz. Modern araç filomuz ve
                deneyimli sürücülerimizle 7/24 yanınızdayız.
              </p>
            </div>

            <div className="grid grid-cols-3 gap-6 text-center">
              <div className="p-6 bg-yellow-50 rounded-xl shadow-sm hover:shadow-md transition-shadow">
                <h3 className="text-3xl font-bold text-yellow-600 mb-2">13+</h3>
                <p className="text-gray-700 font-medium">Yıllık Deneyim</p>
              </div>
              <div className="p-6 bg-yellow-50 rounded-xl shadow-sm hover:shadow-md transition-shadow">
                <h3 className="text-3xl font-bold text-yellow-600 mb-2">20+</h3>
                <p className="text-gray-700 font-medium">Araç Filosu</p>
              </div>
              <div className="p-6 bg-yellow-50 rounded-xl shadow-sm hover:shadow-md transition-shadow">
                <h3 className="text-3xl font-bold text-yellow-600 mb-2">
                  7/24
                </h3>
                <p className="text-gray-700 font-medium">Hizmet</p>
              </div>
            </div>
          </div>

          <div className="relative h-[500px] rounded-2xl overflow-hidden shadow-xl">
            <motion.div
              animate={{
                x: ["-0%", "-100%", "-200%"],
              }}
              transition={{
                duration: 15,
                repeat: Infinity,
                repeatType: "mirror",
                ease: "linear",
              }}
              className="flex"
            >
              {[
                "/assets/taxi-about.jpg",
                "/assets/taxi-about-2.jpg",
                "/assets/taxi-about-3.jpg",
              ].map((src, index) => (
                <div key={index} className="relative h-[500px] min-w-[100%]">
                  <Image
                    src={src}
                    alt={`Isparta By Taksi Araç Filosu ${index + 1}`}
                    fill
                    className="object-cover"
                    priority={index === 0}
                  />
                  <div className="absolute inset-0 bg-gradient-to-t from-black/30 to-transparent"></div>
                </div>
              ))}
            </motion.div>
          </div>
        </div>

        {/* Özellikler */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 mb-16">
          <div className="p-6 border rounded-lg">
            <h3 className="text-xl font-semibold mb-4">Modern Araç Filosu</h3>
            <p className="text-gray-600">
              Tüm araçlarımız düzenli bakımlı, klimalı ve tam sigortalıdır.
              Konforlu yolculuk için sürekli yenilenen araç filomuzla hizmet
              veriyoruz.
            </p>
          </div>
          <div className="p-6 border rounded-lg">
            <h3 className="text-xl font-semibold mb-4">Deneyimli Sürücüler</h3>
            <p className="text-gray-600">
              Profesyonel, güler yüzlü ve şehri iyi bilen sürücülerimizle
              güvenli yolculuk garantisi sunuyoruz.
            </p>
          </div>
          <div className="p-6 border rounded-lg">
            <h3 className="text-xl font-semibold mb-4">Özel Hizmetler</h3>
            <p className="text-gray-600">
              Havalimanı transferi, şehirler arası yolculuk ve özel transfer
              hizmetlerimizle tüm ulaşım ihtiyaçlarınızı karşılıyoruz.
            </p>
          </div>
        </div>

        {/* Misyon & Vizyon */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div className="p-6 bg-gray-50 rounded-lg">
            <h2 className="text-2xl font-bold mb-4">Misyonumuz</h2>
            <p className="text-gray-600">
              Müşterilerimize güvenli, konforlu ve zamanında ulaşım hizmeti
              sunarak, Isparta&apos;nın ulaşım ihtiyaçlarına modern çözümler
              getirmek.
            </p>
          </div>
          <div className="p-6 bg-gray-50 rounded-lg">
            <h2 className="text-2xl font-bold mb-4">Vizyonumuz</h2>
            <p className="text-gray-600">
              Isparta&apos;nın lider taksi firması olarak, teknolojik
              yenilikleri takip eden, müşteri memnuniyetini esas alan ve
              sürdürülebilir hizmet kalitesiyle örnek gösterilen bir marka
              olmak.
            </p>
          </div>
        </div>
      </div>
    </>
  );
}
