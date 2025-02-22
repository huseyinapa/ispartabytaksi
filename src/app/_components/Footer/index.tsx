"use client";

import { reportConversion } from "@/lib/reportConversion";
import { Icon } from "@iconify/react/dist/iconify.js";
import Image from "next/image";
import Link from "next/link";

const FooterComponent = () => {
  return (
    <footer className="pt-16 bg-gray-100 border-t">
      <div className="container grid gap-10 row-gap-6 mb-8 sm:grid-cols-2 lg:grid-cols-4">
        <div className="sm:col-span-2">
          <Link
            href="/"
            aria-label="Gül Şehri Spa & Masaj Salonu"
            title="Isparta Gül Şehri Spa & Masaj Salonu"
            className="inline-flex items-center"
          >
            <span className="text-xl font-bold tracking-wide text-gray-800">
              Isparta By Taksi
            </span>
          </Link>
          <div className="mt-6 lg:max-w-sm">
            <p className="text-sm text-gray-800">
              Profesyonel, güler yüzlü ve şehri iyi bilen sürücülerimizle
              güvenli yolculuk garantisi sunuyoruz.
            </p>
            {/* <p className="mt-4 text-sm text-gray-800">
              Eaque ipsa quae ab illo inventore veritatis et quasi architecto
              beatae vitae dicta sunt explicabo.
            </p> */}
          </div>
        </div>
        <div className="space-y-2 text-sm">
          <p className="text-base font-bold tracking-wide text-gray-900">
            İletişim
          </p>
          <div className="flex">
            <p className="mr-1 text-gray-800">Telefon:</p>
            <a
              href="tel:905431019001"
              aria-label="Our phone"
              title="Our phone"
              className="transition-colors duration-300 text-deep-purple-accent-400 hover:text-deep-purple-800 hover:underline"
              onClick={(e) => {
                e.preventDefault();
                reportConversion("tel:905431019001");
              }}
            >
              +90 (543) 101 9001
            </a>
          </div>
          {/* <div className="flex">
            <p className="mr-1 text-gray-800">Email:</p>
            <a
              href="mailto:info@lorem.mail"
              aria-label="Our email"
              title="Our email"
              className="transition-colors duration-300 text-deep-purple-accent-400 hover:text-deep-purple-800 hover:underline"
            >
              ispartagulsehrimasaj@gmail.com
            </a>
          </div> */}
          <div className="flex">
            <p className="mr-1 text-gray-800">Adres:</p>
            <a
              href="https://maps.app.goo.gl/Zmmo5JkvuTHBzCVE9"
              target="_blank"
              rel="noopener noreferrer"
              aria-label="Our address"
              title="Our address"
              className="transition-colors duration-300 text-deep-purple-accent-400 hover:text-deep-purple-800 hover:underline"
            >
              Piri Mehmet Mahallesi 101 Cadde no 15 Merkez/Isparta
            </a>
          </div>
        </div>
        <div>
          <span className="text-base font-bold tracking-wide text-gray-900">
            Sosyal Medya
          </span>
          <div className="flex items-center mt-1 space-x-3">
            <Link
              href="https://api.whatsapp.com/send/?phone=905431019001"
              className="text-gray-500 transition-colors duration-300 hover:text-deep-purple-accent-400"
            >
              <Icon icon="mdi:whatsapp" width="24" height="24" />
            </Link>
            <Link
              href="/"
              className="text-gray-500 transition-colors duration-300 hover:text-deep-purple-accent-400"
            >
              <svg viewBox="0 0 30 30" fill="currentColor" className="h-6">
                <circle cx="15" cy="15" r="4"></circle>
                <path d="M19.999,3h-10C6.14,3,3,6.141,3,10.001v10C3,23.86,6.141,27,10.001,27h10C23.86,27,27,23.859,27,19.999v-10   C27,6.14,23.859,3,19.999,3z M15,21c-3.309,0-6-2.691-6-6s2.691-6,6-6s6,2.691,6,6S18.309,21,15,21z M22,9c-0.552,0-1-0.448-1-1   c0-0.552,0.448-1,1-1s1,0.448,1,1C23,8.552,22.552,9,22,9z"></path>
              </svg>
            </Link>
          </div>
        </div>
      </div>
      <div className="container flex flex-col-reverse justify-between pt-5 pb-10 border-t lg:flex-row">
        <p className="text-sm text-gray-600">
          © 2025 Isparta By Taksi. Tüm hakkı saklıdır.
        </p>
        <ul className="flex flex-col mb-3 space-y-2 lg:mb-0 sm:space-y-0 sm:space-x-5 sm:flex-row">
          {/* <li>
            <Link
              href="/gizlilik-politikasi"
              className="text-sm text-gray-600 transition-colors duration-300 hover:text-deep-purple-accent-400"
            >
              Gizlilik Politikası
            </Link>
          </li>
          <li>
            <Link
              href="/kullanim-kosullari"
              className="text-sm text-gray-600 transition-colors duration-300 hover:text-deep-purple-accent-400"
            >
              Kullanım Koşulları
            </Link>
          </li> */}
        </ul>
      </div>
    </footer>
  );
};

export default FooterComponent;
