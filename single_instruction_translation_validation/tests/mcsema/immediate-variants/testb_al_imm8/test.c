void leaf() {
  __asm__("testb $0x77, %al");
  }

void main() {
  leaf();
}