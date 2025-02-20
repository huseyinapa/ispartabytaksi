"use client";
import React from "react";
import CustomAccordion from "@/app/_components/Accordion";

export default function FAQFeatures() {
  const accordionData = [
    {
      title: "Taksi hizmetinizi nasıl çağırabilirim?",
      content: (
        <>
          Taksi hizmetimizi çağırmak için bizi doğrudan arayabilir veya WhatsApp
          üzerinden mesaj gönderebilirsiniz.
          <br />
          7/24 hizmet vermekteyiz ve en kısa sürede size dönüş yapacağız.
        </>
      ),
    },
    {
      title: "Havalimanı transfer hizmetiniz var mı?",
      content: (
        <>
          Evet, Isparta Süleyman Demirel Havalimanı ve çevre illerdeki
          havalimanlarına transfer hizmeti sunmaktayız.
          <br />
          Rezervasyon yaptırmanız durumunda, uçuş saatinize göre zamanında
          havalimanında olmanızı sağlıyoruz.
        </>
      ),
    },
    {
      title: "Ödeme seçenekleriniz nelerdir?",
      content: (
        <>
          Nakit ödemenin yanı sıra kredi kartı ve banka kartı ile ödeme
          yapabilirsiniz.
          <br />
          Ayrıca kurumsal müşterilerimiz için faturalı çalışma imkanımız da
          bulunmaktadır.
        </>
      ),
    },
    {
      title: "Şehirler arası yolculuk yapıyor musunuz?",
      content: (
        <>
          Evet, şehirler arası yolculuk hizmeti vermekteyiz. Özellikle çevre
          illere olan transferleriniz için güvenli ve konforlu bir yolculuk
          sunuyoruz.
          <br />
          Fiyat bilgisi için bizi arayabilirsiniz.
        </>
      ),
    },
    {
      title: "Taksi ücretleri nasıl hesaplanıyor?",
      content: (
        <>
          Taksi ücretleri resmi taksimetre tarifesine göre hesaplanmaktadır.
          <br />
          Şehir dışı ve özel transfer hizmetlerinde ise mesafe ve güzergaha göre
          sabit fiyat uygulanmaktadır.
        </>
      ),
    },
    {
      title: "Araçlarınızın özellikleri nelerdir?",
      content: (
        <>
          Filomuzda bulunan tüm araçlar düzenli bakımlı, klimalı ve konforlu
          araçlardır.
          <br />
          Yolcu ve bagaj kapasitesi yüksek, temiz ve bakımlı araçlarımızla
          hizmet vermekteyiz.
          <br />
          Tüm araçlarımız sigortalıdır ve güvenlik standartlarına uygundur.
        </>
      ),
    },
  ];

  return (
    <div className="container flex flex-col justify-center h-max py-[130px]">
      <h1 className="text-4xl font-bold mb-6 text-center md:text-left ">
        Sıkça Sorulan Sorular
      </h1>

      <div>
        <CustomAccordion items={accordionData} defaultIndex={0} />
      </div>
    </div>
  );
}
