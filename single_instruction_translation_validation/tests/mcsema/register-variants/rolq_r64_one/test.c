void leaf() {
  __asm__("rolq $0x1, %rbx");
  }

void main() {
  leaf();
}