-- CreateTable
CREATE TABLE "Users" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "imageUrl" TEXT NOT NULL,
    "bgImage" TEXT,
    "email" TEXT NOT NULL,
    "password" TEXT,
    "about" TEXT NOT NULL,
    "tag" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "isVerified" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Posts" (
    "id" TEXT NOT NULL,
    "type" TEXT NOT NULL,
    "text" TEXT,
    "image" TEXT,
    "video" TEXT,
    "UserEmail" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Posts_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Comments" (
    "id" TEXT NOT NULL,
    "text" TEXT NOT NULL,
    "postId" TEXT NOT NULL,
    "UserEmail" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Comments_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Replies" (
    "id" TEXT NOT NULL,
    "text" TEXT NOT NULL,
    "commentId" TEXT NOT NULL,
    "UserEmail" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Replies_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FeaturedUsers" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "imageUrl" TEXT NOT NULL,
    "about" TEXT,
    "tag" TEXT,
    "isVerified" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "FeaturedUsers_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Community" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "imageUrl" TEXT NOT NULL,

    CONSTRAINT "Community_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "CommunityPost" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "UserEmail" TEXT NOT NULL,
    "text" TEXT,
    "image" TEXT,
    "video" TEXT,
    "communityId" TEXT NOT NULL,

    CONSTRAINT "CommunityPost_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ChatRoom" (
    "id" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "ChatRoom_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Messages" (
    "id" TEXT NOT NULL,
    "text" TEXT,
    "image" TEXT,
    "video" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "chatRoomId" TEXT NOT NULL,
    "UserEmail" TEXT NOT NULL,

    CONSTRAINT "Messages_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "_UserFollows" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_savedposts" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_LikedPosts" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_community" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_community-admin" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "_chat-room" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL
);

-- CreateIndex
CREATE UNIQUE INDEX "Users_email_key" ON "Users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Users_tag_key" ON "Users"("tag");

-- CreateIndex
CREATE INDEX "post_userEmail_index" ON "Posts"("UserEmail");

-- CreateIndex
CREATE INDEX "comment_postId_index" ON "Comments"("postId");

-- CreateIndex
CREATE INDEX "comment_userEmail_index" ON "Comments"("UserEmail");

-- CreateIndex
CREATE INDEX "reply_commentId_index" ON "Replies"("commentId");

-- CreateIndex
CREATE INDEX "reply_userEmail_index" ON "Replies"("UserEmail");

-- CreateIndex
CREATE UNIQUE INDEX "FeaturedUsers_id_key" ON "FeaturedUsers"("id");

-- CreateIndex
CREATE UNIQUE INDEX "FeaturedUsers_email_key" ON "FeaturedUsers"("email");

-- CreateIndex
CREATE UNIQUE INDEX "FeaturedUsers_tag_key" ON "FeaturedUsers"("tag");

-- CreateIndex
CREATE UNIQUE INDEX "Community_name_key" ON "Community"("name");

-- CreateIndex
CREATE INDEX "communityPosts_userEmail_index" ON "CommunityPost"("UserEmail");

-- CreateIndex
CREATE INDEX "communityPosts_communityId_index" ON "CommunityPost"("communityId");

-- CreateIndex
CREATE INDEX "messages_chatRoomId_index" ON "Messages"("chatRoomId");

-- CreateIndex
CREATE INDEX "messages_userEmail_index" ON "Messages"("UserEmail");

-- CreateIndex
CREATE UNIQUE INDEX "_UserFollows_AB_unique" ON "_UserFollows"("A", "B");

-- CreateIndex
CREATE INDEX "_UserFollows_B_index" ON "_UserFollows"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_savedposts_AB_unique" ON "_savedposts"("A", "B");

-- CreateIndex
CREATE INDEX "_savedposts_B_index" ON "_savedposts"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_LikedPosts_AB_unique" ON "_LikedPosts"("A", "B");

-- CreateIndex
CREATE INDEX "_LikedPosts_B_index" ON "_LikedPosts"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_community_AB_unique" ON "_community"("A", "B");

-- CreateIndex
CREATE INDEX "_community_B_index" ON "_community"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_community-admin_AB_unique" ON "_community-admin"("A", "B");

-- CreateIndex
CREATE INDEX "_community-admin_B_index" ON "_community-admin"("B");

-- CreateIndex
CREATE UNIQUE INDEX "_chat-room_AB_unique" ON "_chat-room"("A", "B");

-- CreateIndex
CREATE INDEX "_chat-room_B_index" ON "_chat-room"("B");
