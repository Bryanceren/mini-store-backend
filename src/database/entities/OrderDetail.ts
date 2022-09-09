import {
  Table,
  Column,
  Model,
  AutoIncrement,
  PrimaryKey,
  ForeignKey,
  HasMany,
} from 'sequelize-typescript';
import { Order } from './Order';
import { Product } from './Product';

@Table
export class OrderDetail extends Model<OrderDetail> {
  @PrimaryKey
  @Column
  id: number;

  @ForeignKey(() => Order)
  @Column
  orderId: number;

  @ForeignKey(() => Product)
  @Column
  productId: number;

  @Column
  totalAmount: string;

  @HasMany(() => Product, 'productId')
  products: Product[];
}
