void leaf() {
  __asm__("sarb $0x1, %bl");
  }

void main() {
  leaf();
}