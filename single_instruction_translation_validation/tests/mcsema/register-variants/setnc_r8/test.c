void leaf() {
  __asm__("setnc %bl");
  }

void main() {
  leaf();
}