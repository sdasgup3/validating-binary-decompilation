void leaf() {
  __asm__("blsmskq %rcx, %rbx");
  }

void main() {
  leaf();
}