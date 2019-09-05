void leaf() {
  __asm__("orq $0x77, %rbx");
  }

void main() {
  leaf();
}