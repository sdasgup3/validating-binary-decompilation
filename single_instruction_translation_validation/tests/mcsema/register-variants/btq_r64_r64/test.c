void leaf() {
  __asm__("btq %rcx, %rbx");
  }

void main() {
  leaf();
}