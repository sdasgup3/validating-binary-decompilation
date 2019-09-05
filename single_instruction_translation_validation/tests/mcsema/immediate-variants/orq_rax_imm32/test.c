void leaf() {
  __asm__("orq $0x77, %rax");
  }

void main() {
  leaf();
}