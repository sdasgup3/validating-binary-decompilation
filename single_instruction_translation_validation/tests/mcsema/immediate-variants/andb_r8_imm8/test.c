void leaf() {
  __asm__("andb $0x77, %bl");
  }

void main() {
  leaf();
}