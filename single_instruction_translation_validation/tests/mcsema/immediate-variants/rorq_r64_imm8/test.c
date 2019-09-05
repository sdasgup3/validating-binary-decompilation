void leaf() {
  __asm__("rorq $0x77, %rbx");
  }

void main() {
  leaf();
}