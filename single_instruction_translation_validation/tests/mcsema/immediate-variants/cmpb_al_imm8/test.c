void leaf() {
  __asm__("cmpb $0x77, %al");
  }

void main() {
  leaf();
}