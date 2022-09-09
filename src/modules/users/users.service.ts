import { Inject, Injectable } from '@nestjs/common';
import { Users } from 'src/database/entities/User';
import { UserDto } from './dto/users.dto';

@Injectable()
export class UsersService {
  constructor(
    @Inject('USERS_REPOSITORY')
    private readonly usersRepository: typeof Users,
  ) {}
  async create(user: UserDto): Promise<Users> {
    return await this.usersRepository.create<Users>(user);
  }

  async findOneByEmail(email: string): Promise<Users> {
    return await this.usersRepository.findOne<Users>({ where: { email } });
  }

  async findOneById(id: number): Promise<Users> {
    return await this.usersRepository.findOne<Users>({ where: { id } });
  }
}
