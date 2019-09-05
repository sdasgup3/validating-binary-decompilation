void leaf() {
  __asm__("salb $0x1, %bl");
  }

void main() {
  leaf();
}