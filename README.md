# Campus Buzz

Campus Buzz is a comprehensive social media platform developed using Next.js and other modern technologies. It provides a rich set of features for users to engage, interact, and share content seamlessly, tailored specifically for college/university communities.

## Features

### Core Features

- Make a post
- Comment on posts
- Post an image
- Post a video
- Create communities
- Admin dashboard
- Featured Users

### User Functionality

- Infinite scroll
- Save posts
- Like/Dislike a post
- Edit profile
- Change profile photo
- Random Name Suggestion
- Live streaming
- Get verified (blue tick)

### Third-Party Libraries

- **Next Auth**: Authentication
- **Superpine**: Touch-based components
- **React-HLS-Player**: Video playback
- **React-hot-toast**: Toast notifications
- **Pusher**: Real-time features
- **UploadThig**: upload images and videos
- **ReactPlay**: Payments

### Stack

- **Turborepo (monorepo)**
- **Next.js**
- **TypeScript**
- **Prisma**
- **Neontech POSTGRESQL**
- **Firebase Cloud Messaging**
- **BlackBlaze B2 object storage**

## Architecture

The application follows a monorepo architecture and utilizes various technologies for different components:

- **Image/Video Upload**: Media files are uploaded to BlackBlaze B2 object storage, and their URLs are stored in the database.
- **Real-time Push Notification**: Pusher.js is used for real-time connection, enabling push notifications to clients.
- **General Functioning**: The server handles all CRUD operations related to posts, feeds, communities, etc., using Prisma and a Neontech POSTGRESQL database.

## Development Stages

The project development follows an iterative approach, with Priority 0 features being the core functionality:

### Priority 0 Features

- Make a post
- Comment on post
- Post an image
- Post a video
- Create communities
- Like/Dislike

Other features will be added as the development progresses.

## Getting Started

To set up the project locally, follow these steps:

1. Clone the repository: `git clone https://github.com/maheshsp1809/campus-buzz.git`
2. Install dependencies: `npm install`
3. Set up environment variables (refer to the `.env.example` file)
4. Start the development server: `npm run dev`

## Contributing

Contributions to Campus Buzz are welcome! If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.
