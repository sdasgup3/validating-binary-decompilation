void leaf() {
  __asm__("xchgq %rcx, %rbx");
  }

void main() {
  leaf();
}