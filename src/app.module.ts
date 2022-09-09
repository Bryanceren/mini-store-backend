import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { DatabaseModule } from './database/DatabaseModule';
import { UsersModule } from './modules/users/users.module';
import { AuthenticationModule } from './modules/authentication/authentication.module';

@Module({
  imports: [UsersModule, DatabaseModule, AuthenticationModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
