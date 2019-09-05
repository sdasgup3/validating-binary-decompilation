void leaf() {
  __asm__("testb $0x77, %bl");
  }

void main() {
  leaf();
}