void leaf() {
  __asm__("rcrb $0x77, %bl");
  }

void main() {
  leaf();
}