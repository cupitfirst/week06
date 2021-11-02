CREATE TABLE `commodity`  (
  `id` int NOT NULL,
  `name` varchar(40) NULL,
  `brand` varchar(40) NULL,
  `sku` varchar(50) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `orders`  (
  `id` int NOT NULL,
  `order_no` varchar(40) NULL COMMENT '订单编号',
  `user_id` int NULL COMMENT '用户id',
  `discount` decimal(10, 2) NULL COMMENT '优惠',
  `total_price` decimal(10, 2) NULL COMMENT '总价',
  `status` char(255) NULL COMMENT '订单状态',
  `create_date` datetime NULL COMMENT '创建时间',
  `update_date` datetime NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
);

CREATE TABLE `order_detail`  (
  `id` int NOT NULL,
  `order_id` int NULL COMMENT '订单id',
  `commodity_id` int NULL COMMENT '商品id',
  `count` int NULL COMMENT '数量',
  `unit_price` decimal(10, 2) NULL COMMENT '单价',
  `total_price` decimal(10, 2) NULL COMMENT '总价',
  `remark` varchar(50) NULL COMMENT '备注',
  `supplier_id` int NULL COMMENT '供应商id',
  PRIMARY KEY (`id`)
);

CREATE TABLE `supplier`  (
  `id` int NOT NULL,
  `supplier_name` varchar(255) NULL COMMENT '供应商名称',
  `contact` varchar(255) NULL COMMENT '联系人',
  PRIMARY KEY (`id`)
);

CREATE TABLE `user`  (
  `id` int NOT NULL,
  `username` varchar(20) NULL,
  `password` char(1) NULL,
  PRIMARY KEY (`id`)
);

