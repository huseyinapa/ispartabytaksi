"use client";

import React from "react";
import Image from "next/image";
import { motion } from "framer-motion";

export default function About() {
  return (
    <div className="container mx-auto py-[130px]">
      <div className="grid grid-cols-1 md:grid-cols-2 gap-12 items-center mb-20">
        <div className="space-y-8">
          <div>
            <h1 className="text-5xl font-bold mb-4 text-gray-800">
              Isparta <span className="text-yellow-500">By Taksi</span>
            </h1>
            <p className="text-xl text-gray-600 leading-relaxed">
              2020 yılından bu yana Isparta&apos;da güvenilir, konforlu ve
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
              <h3 className="text-3xl font-bold text-yellow-600 mb-2">3</h3>
              <p className="text-gray-700 font-medium">Araç Filosu</p>
            </div>
            <div className="p-6 bg-yellow-50 rounded-xl shadow-sm hover:shadow-md transition-shadow">
              <h3 className="text-3xl font-bold text-yellow-600 mb-2">7/24</h3>
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
              "/images/services/ispartabytaksi-0008 (2).jpg",
              "/images/services/ispartabytaksi-0165 (2).jpg",
              "/images/services/ispartabytaksi-0146.jpg",
            ].map((src, index) => (
              <div key={index} className="relative h-[500px] min-w-[100%]">
                <Image
                  src={src}
                  alt={`Isparta By Taksi Araç Filosu ${index + 1}`}
                  fill
                  className="object-cover"
                  loading="lazy"
                // priority={index === 0}
                />
                <div className="absolute inset-0 bg-gradient-to-t from-[#333333]/30 to-transparent"></div>
              </div>
            ))}
          </motion.div>
        </div>
      </div>

      {/* Özellikler */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 mb-16">
        <div className="p-6 border rounded-lg">
          <h3 className="text-[#333333] text-xl font-semibold mb-4">
            Modern Araç Filosu
          </h3>
          <p className="text-gray-600">
            Tüm araçlarımız düzenli bakımlı, klimalı ve tam sigortalıdır.
            Konforlu yolculuk için sürekli yenilenen araç filomuzla hizmet
            veriyoruz.
          </p>
        </div>
        <div className="p-6 border rounded-lg">
          <h3 className="text-[#333333] text-xl font-semibold mb-4">
            Deneyimli Sürücüler
          </h3>
          <p className="text-gray-600">
            Profesyonel, güler yüzlü ve şehri iyi bilen sürücülerimizle güvenli
            yolculuk garantisi sunuyoruz.
          </p>
        </div>
        <div className="p-6 border rounded-lg">
          <h3 className="text-[#333333] text-xl font-semibold mb-4">
            Özel Hizmetler
          </h3>
          <p className="text-gray-600">
            Havalimanı transferi, şehirler arası yolculuk ve özel transfer
            hizmetlerimizle tüm ulaşım ihtiyaçlarınızı karşılıyoruz.
          </p>
        </div>
      </div>

      {/* Misyon & Vizyon */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
        <div className="p-6 bg-gray-50 rounded-lg space-y-3">
          <h2 className="text-[#333333] text-2xl font-bold mb-4">Misyonumuz</h2>
          <p className="text-gray-600">
            Isparta ve çevresinde dilediğiniz lokasyona ulaşmanız için en
            efektif çözüm Isparta By Taksi&apos;dir.. Transfer hizmetlerimizde,
            güvenlik ve konforunuz için her türlü koşulu eksiksiz sağlıyoruz.
          </p>
          <p className="text-gray-600">
            Tam zamanında ve kusursuz biçimde sunduğumuz hizmetlerimiz, en
            yüksek kalite standartlarında yer alır. Güvenli ve konforlu seyahat
            koşullarını lokasyona göre fiyatlandırıyor ve en uygun fiyatlarla
            seyahat edebilmenizi sağlıyoruz.
          </p>
        </div>
        <div className="p-6 bg-gray-50 rounded-lg space-y-3">
          <h2 className="text-[#333333] text-2xl font-bold mb-4 ">
            Vizyonumuz
          </h2>
          <p className="text-gray-600">
            Isparta&apos;nın lider taksi firması olarak, teknolojik yenilikleri
            takip eden, müşteri memnuniyetini esas alan ve sürdürülebilir hizmet
            kalitesiyle örnek gösterilen bir marka olmak.
          </p>
        </div>
      </div>
    </div>
  );
}
