import {
  Table,
  Column,
  Model,
  AutoIncrement,
  PrimaryKey,
  ForeignKey,
  HasOne,
} from 'sequelize-typescript';
import { Rol } from './Rol';

@Table
export class Users extends Model<Users> {
  @AutoIncrement
  @PrimaryKey
  @Column
  id: number;

  @Column
  email: string;

  @Column
  password: string;

  @ForeignKey(() => Rol)
  @Column
  rolId: number;

  @HasOne(() => Rol, 'rolId')
  roles: Rol;
}
