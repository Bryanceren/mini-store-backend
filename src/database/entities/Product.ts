import {
  Table,
  Column,
  Model,
  PrimaryKey,
  BelongsToMany,
} from 'sequelize-typescript';
import { Order } from './Order';
import { OrderDetail } from './OrderDetail';

@Table
export class Product extends Model<Product> {
  @PrimaryKey
  @Column
  id: number;

  @Column
  name: string;

  @Column
  price: string;
}
