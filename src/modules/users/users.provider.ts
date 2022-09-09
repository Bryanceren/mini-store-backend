import { Users } from 'src/database/entities/User';

export const usersProvider = [
  {
    provide: 'USERS_REPOSITORY',
    useValue: Users,
  },
];
