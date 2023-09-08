
-- +migrate Up
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist`
(
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255),
    amount int,
    unit varchar(255),
    recipeTitle varchar(255),
    recipeId int,
    created_at datetime DEFAULT CURRENT_TIMESTAMP COMMENT '作成日時',
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新日時'
);

-- +migrate Down
DROP TABLE `wishlist`;