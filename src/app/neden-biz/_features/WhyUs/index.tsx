"use client";

import { motion } from "framer-motion";
import Image from "next/image";

const paragraphs = [
  "Isparta By Taksi olarak, 2010 yılından bu yana şehrimizde güvenilir ve konforlu ulaşım hizmeti sunmanın gururunu yaşıyoruz. Modern araç filomuz, deneyimli sürücülerimiz ve müşteri odaklı hizmet anlayışımızla, Isparta'nın önde gelen taksi firmalarından biri olarak hizmet vermekteyiz. Bizim için öncelik her zaman yolcularımızın güvenliği ve memnuniyetidir.",

  "Araç filomuz düzenli bakımlarla her zaman en iyi durumda tutulmaktadır. Tüm araçlarımız klimalı, konforlu ve tam sigortalıdır. Özellikle havalimanı transferleri, şehirler arası yolculuklar ve özel transferler için geniş bagaj hacmine sahip araçlarımızla hizmet vermekteyiz. Her araçta kredi kartı ile ödeme imkanı sunarak, nakit taşıma zorunluluğunu ortadan kaldırıyoruz.",

  "Sürücülerimiz, yılların deneyimine sahip, şehri karış karış bilen, güler yüzlü ve profesyonel kişilerdir. Tüm sürücülerimiz düzenli sağlık kontrollerinden geçmekte ve sürekli eğitimlerle kendilerini geliştirmektedir. Özellikle yabancı misafirlerimiz için İngilizce bilen sürücülerimizle iletişimde hiçbir sorun yaşamayacaksınız. Müşteri memnuniyeti odaklı hizmet anlayışımızla, her yolculuğunuzda konforu ve güveni bir arada sunuyoruz.",

  "Isparta By Taksi olarak, teknolojiyi yakından takip ediyor ve hizmetlerimizi sürekli olarak güncelliyoruz. Mobil uyumlu websitemiz sayesinde, taksi çağırma işlemlerinizi hızlı ve kolay bir şekilde gerçekleştirebilirsiniz. Ayrıca, yolculuk öncesinde tahmini ücret hesaplama ve sürücü bilgilerini görüntüleme gibi özelliklerle, şeffaf ve güvenilir bir hizmet sunuyoruz. Bizi tercih ettiğiniz için teşekkür eder, güvenli ve konforlu yolculuklar dileriz.",
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

const WhyUsFeature = () => {
  return (
    <div className="min-h-screen">
      <figure className="relative h-[500px] overflow-hidden">
        <Image
          src="/images/services/ispartabytaksi-0008.jpg"
          alt="Isparata By Taksi Hakkımızda"
          className="object-cover opacity-60 aspect-video w-full"
          fill
          priority
        />
        <figcaption className="absolute inset-0 flex items-center justify-center bg-gray-800 bg-opacity-50">
          <motion.h1
            className="text-6xl font-bold text-center text-white"
            initial={{ y: -100, opacity: 0 }}
            animate={{ y: 0, opacity: 1 }}
            transition={{ duration: 0.5 }}
          >
            Neden Biz?
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
    </div>
  );
};

export default WhyUsFeature;
