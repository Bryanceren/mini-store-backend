import { Sequelize } from 'sequelize-typescript';
import { Order } from './entities/Order';
import { OrderDetail } from './entities/OrderDetail';
import { Product } from './entities/Product';
import { Rol } from './entities/Rol';
import { Users } from './entities/User';

export const databaseProviders = [
  {
    provide: 'SEQUELIZE',
    useFactory: async () => {
      const sequelize = new Sequelize({
        dialect: 'postgres',
        host: 'localhost',
        port: 5433,
        username: 'postgres',
        password: 'root',
        database: 'store',
        define: {
          timestamps: false,
        },
      });
      sequelize.addModels([Order, OrderDetail, Product, Users, Rol]);
      await sequelize.sync();
      return sequelize;
    },
  },
];
