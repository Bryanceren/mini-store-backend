import { Controller, Body, Post, UseGuards, Request } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { UserDto, UserLoginDto } from '../users/dto/users.dto';
import { AuthService } from './authentication.service';

@Controller('authentication')
export class AuthenticationController {
  constructor(private authService: AuthService) {}

  @UseGuards(AuthGuard('local'))
  @Post('login')
  async login(@Request() req) {
    return await this.authService.login(req.user);
  }

  @Post('signup')
  async signUp(@Body() user: UserDto) {
    return await this.authService.create(user);
  }
}
