"use client";

import { reportConversion } from "@/lib/reportConversion";
import Link from "next/link";

const HomeFeature = () => {
  return (
    <div className="mx-auto w-full bg-slate-400">
      <div className="relative w-full h-screen overflow-hidden">
        <video
          autoPlay
          loop
          muted
          playsInline
          className="aspect-video absolute top-0 left-0 w-full h-full object-cover z-1"
        >
          <source src="/images/0216.mp4" type="video/mp4" />
          Tarayıcınız video elementini desteklemiyor.
        </video>
        <div className="absolute inset-0 bg-black/30 z-2"></div>

        {/* <div className="relative bg-slate-600">
          <div className="flex flex-row items-center justify-center">
            <Image
              className="object-cover w-full h-screen"
              src="/images/terapi.jpg"
              alt="Next.js logo"
              width={1920}
              height={1080}
              priority
            />
          </div> */}
        <div className="absolute mx-auto bottom-80 right-0 left-0 text-white text-center font-bold text-3xl md:text-4xl lg:text-5xl backdrop-blur-lg w-[90%] md:w-[67%] h-auto px-2 py-3 rounded-md">
          Isparta'nın Her Yerine Taksi Hizmeti
        </div>
        {/* <div className="absolute inset-0 bg-gray-800"></div> */}
        <div className="absolute flex justify-center gap-6 bottom-20 right-0 left-0">
          <Link
            href={"tel:905431019001"}
            onClick={(e) => {
              e.preventDefault();
              reportConversion("tel:905431019001");
            }}
            className="flex w-80 h-12 items-center justify-center border rounded-md text-black hover:text-yellow-400 font-semibold bg-yellow-400 border-yellow-400 hover:bg-transparent hover:bg-opacity-50 hover:border-opacity-50 transition-all duration-150 ease-linear backdrop-blur-lg"
          >
            Taksi Çağır!
          </Link>
          {/* <Link
            href=""
            target="_blank"
            rel="noopener noreferrer"
            className="flex w-44 h-12 items-center justify-center border rounded-md bg-opacity-50 text-white font-semibold hover:bg-gray-800 hover:border-gray-800 backdrop-blur-lg"
          >
            Yol Tarifi Alın
          </Link> */}
        </div>
      </div>
      {/* </div> */}
    </div>
  );
};

export default HomeFeature;
