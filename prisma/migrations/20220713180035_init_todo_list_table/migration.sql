-- CreateTable
CREATE TABLE `Tags` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(255) NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Todolist` (
    `id` VARCHAR(191) NOT NULL,
    `name` VARCHAR(255) NULL,
    `priority` INTEGER NOT NULL,
    `status` ENUM('NEED_ACTION', 'PENDING', 'DONE') NOT NULL DEFAULT 'NEED_ACTION',
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TagOnTodolist` (
    `todoListId` VARCHAR(191) NOT NULL,
    `tagId` VARCHAR(191) NOT NULL,
    `assignedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`todoListId`, `tagId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `TagOnTodolist` ADD CONSTRAINT `TagOnTodolist_tagId_fkey` FOREIGN KEY (`tagId`) REFERENCES `Tags`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `TagOnTodolist` ADD CONSTRAINT `TagOnTodolist_todoListId_fkey` FOREIGN KEY (`todoListId`) REFERENCES `Todolist`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
