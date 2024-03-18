import { Module } from "@nestjs/common";
import { AppService } from "./app.service";
import { HealthModule } from "./health/health.module";

@Module({
  imports: [HealthModule],
  providers: [AppService],
})
export class AppModule {}
