export class UserDto {
  readonly name: string;
  readonly email: string;
  readonly password: string;
  readonly rolId: number;
}
export class UserLoginDto {
  readonly email: string;
  readonly password: string;
}
