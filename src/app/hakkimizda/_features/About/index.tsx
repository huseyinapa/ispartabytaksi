"use client";

import { motion } from "framer-motion";
import Image from "next/image";

const paragraphs = [
  "Isparta By Taksi yılın her döneminde, haftanın her günü, 24 saat siz ve sevdiklerinize güven ve konfor içinde hizmet veriyoruz.",
  "Toplu taşıma, taksi veya özel araçtan biraz daha fazlasını istiyorsanız, bizim tarafımızdan sunulan Yolcu Transferi hizmetlerini tercih edebilirsiniz. Taksi hizmetinden daha nitelikli ve toplu taşıma standartlarında olmayıp, size özel araçların kullanıldığı bu hizmete, farklı prosedürler dahilinde ulaşabilirsiniz. Isparta ve çevresinde dilediğiniz lokasyona ulaşmanız için en efektif çözümdür.",
  "Transfer hizmetlerimizde, güvenlik ve konforunuz için her türlü koşulu eksiksiz sağlıyoruz. Tam zamanında ve kusursuz biçimde sunduğumuz hizmetlerimiz, en yüksek kalite standartlarında yer alır. Güvenli ve konforlu seyahat koşullarını lokasyona göre fiyatlandırıyor ve en uygun fiyatlarla seyahat edebilmenizi sağlıyoruz.",
  "Yolcu Transferi Nasıl Yapılır? ",
  "Yolcu Transferi hizmeti, bulunduğunuz lokasyon ile gitmek istediğiniz noktayı bizimle paylaşmanızdan sonra hemen başlayabiliyor. Müsaitlik durumuna göre dakikalar içerisinde sizi alabiliyor, Isparta  ve çevresindeki herhangi bir adrese ulaştırabiliyoruz. Bu noktada fiyatlandırma iki nokta arasındaki mesafeye göre değişiyor. Standart araçlarımızla belli sayıda yolcuyu transfer edebiliyoruz ki, özel durumlarda özel hizmetler de arz edebiliyoruz.",
  "Bagaj durumunuz ve diğer özel gereksinimler de öğrenildikten sonra size özel bir fiyatlandırma yapılarak onayınızın ardından hemen bulunduğunuz noktaya ulaşıyoruz. Dilerseniz, tarifede belirtilen ücretler kapsamında olmak üzere sizi uzak lokasyonlardan alıp, Isparta nın herhangi bir noktasına ulaştırmamız da mümkün olabiliyor. Belirttiğimiz gibi;",
  "Yolcu Transferi hizmetimizde odak sizsiniz, sizin tercih ve talepleriniz doğrultusunda hizmet üretiyor ve arz ediyoruz. Şimdi bize ulaşıp, hemen araç talep edebilirsiniz. Fiyatlarımız ve uygulama esasları ile ilgili detaylara sitemizden ulaşabilir ya da bize bu konuda ulaşabilirsiniz.",
];

const containerVariants = {
  hidden: { opacity: 1 },
  visible: {
    opacity: 1,
    transition: {
      staggerChildren: 0.4,
    },
  },
};

const childVariants = {
  hidden: { x: -100, opacity: 0 },
  visible: { x: 0, opacity: 1 },
};

export default function AboutFeature() {
  return (
    <>
      <figure className="relative h-[500px] overflow-hidden">
        <Image
          src="/images/services/ispartabytaksi-0165.jpg"
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
      <motion.div
        className="container flex flex-col gap-8 p-8"
        variants={containerVariants}
        initial="hidden"
        animate="visible"
      >
        {paragraphs.map((text, index) => (
          <motion.p
            key={index}
            variants={childVariants}
            className={index === 0 ? "indent-8" : ""}
          >
            {text}
          </motion.p>
        ))}
      </motion.div>
    </>
  );
}
