import { NextResponse } from "next/server";
import { prisma } from "@/lib/db";
import crypto from "crypto";

const generateUUID = () => {
  return crypto.randomUUID();
};

export const GET = async () => {
  try {
    let FeaturedUsers = await prisma.featuredUsers.findMany();

    // Add your hardcoded data here
    const hardcodedData = [
      {
        id: generateUUID(),
        name: "Mahesh SP",
        email: "maheshsp1809@gmail.com",
        imageUrl: "/Profilelinkedin.jpeg",
        about: "Software Engineer",
        tag: "Don't Just Talk..",
        isVerified: true,
      },
      {
        id: generateUUID(),
        name: "Elon Musk",
        email: "lionmahi4571@gmail.com",
        imageUrl: "/musk.jpeg",
        about: "Just bored",
        tag: "Just Do it!",
        isVerified: true,
      },
      {
        id: generateUUID(),
        name: "campus-buzz-support",
        email: "lionmahi4571@gmail.com",
        imageUrl: "/_6dd78af8-728b-43b4-9083-9b6eb8bb0017-removebg-preview.png",
        about: "Customer Support",
        tag: "customer-service",
        isVerified: true,
      },
    ];

    // Merge the hardcoded data with the data fetched from the database
    FeaturedUsers = [...FeaturedUsers, ...hardcodedData];

    return new NextResponse(JSON.stringify(FeaturedUsers));
  } catch (error) {
    return new NextResponse("error", { status: 404 });
  }
};