void leaf() {
  __asm__("subl $0x77, %eax");
  }

void main() {
  leaf();
}