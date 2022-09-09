import {
  Table,
  Column,
  Model,
  AutoIncrement,
  PrimaryKey,
} from 'sequelize-typescript';

@Table
export class Rol extends Model<Rol> {
  @PrimaryKey
  @Column
  id: number;

  @Column
  name: string;
}
