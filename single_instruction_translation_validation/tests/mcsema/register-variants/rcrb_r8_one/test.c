void leaf() {
  __asm__("rcrb $0x1, %bl");
  }

void main() {
  leaf();
}