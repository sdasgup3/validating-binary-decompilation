void leaf() {
  __asm__("cmpxchgq %rcx, %rbx");
  }

void main() {
  leaf();
}