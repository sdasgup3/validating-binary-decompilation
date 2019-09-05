void leaf() {
  __asm__("rorq $0x1, %rbx");
  }

void main() {
  leaf();
}