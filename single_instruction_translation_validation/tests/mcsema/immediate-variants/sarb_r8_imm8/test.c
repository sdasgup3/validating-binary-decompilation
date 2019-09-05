void leaf() {
  __asm__("sarb $0x77, %bl");
  }

void main() {
  leaf();
}