import { Module } from '@nestjs/common';
import { AuthService } from './authentication.service';
import { AuthenticationController } from './authentication.controller';
import { UsersModule } from '../users/users.module';
import { PassportModule } from '@nestjs/passport';
import { LocalStrategy } from './local.strategy';
import { JwtModule } from '@nestjs/jwt';
import { JwtStrategy } from './jwt.strategy';

@Module({
  imports: [
    PassportModule,
    UsersModule,
    JwtModule.register({
      secret: 'Example key',
      signOptions: { expiresIn: '100h' },
    }),
  ],
  providers: [AuthService, LocalStrategy, JwtStrategy],
  controllers: [AuthenticationController],
})
export class AuthenticationModule {}
