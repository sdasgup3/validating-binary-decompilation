void leaf() {
  __asm__("testb $0x0, -4(%rbp)");
  }

void main() {
  leaf();
}