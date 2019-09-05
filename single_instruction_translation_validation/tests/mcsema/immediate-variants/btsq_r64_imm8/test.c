void leaf() {
  __asm__("btsq $0x77, %rbx");
  }

void main() {
  leaf();
}