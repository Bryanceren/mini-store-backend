import {
  Table,
  Column,
  Model,
  AutoIncrement,
  PrimaryKey,
  HasMany,
  ForeignKey,
  HasOne,
} from 'sequelize-typescript';
import { OrderDetail } from './OrderDetail';
import { Product } from './Product';
import { Users } from './User';

@Table
export class Order extends Model<Order> {
  @PrimaryKey
  @Column
  id: number;

  @ForeignKey(() => Users)
  @Column
  userId: number;

  @HasOne(() => Users, 'id')
  user: Users;

  @HasOne(() => OrderDetail, 'id')
  orderDetail: OrderDetail;
}
