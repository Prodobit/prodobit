import { customType } from "drizzle-orm/pg-core";
import Decimal from "decimal.js";

export const numericAsDecimal = customType<{ data: Decimal; driverData: string }>({
  dataType() { return "numeric"; },
  fromDriver(value) { return new Decimal(value); },
  toDriver(value) { return value.toString(); },
});